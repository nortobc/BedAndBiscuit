package bedandbiscuit.user

import org.apache.commons.lang.builder.HashCodeBuilder

class SecurityUserSecurityRole implements Serializable {

	private static final long serialVersionUID = 1

	SecurityUser securityUser
	SecurityRole securityRole

	boolean equals(other) {
		if (!(other instanceof SecurityUserSecurityRole)) {
			return false
		}

		other.securityUser?.id == securityUser?.id &&
		other.securityRole?.id == securityRole?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (securityUser) builder.append(securityUser.id)
		if (securityRole) builder.append(securityRole.id)
		builder.toHashCode()
	}

	static SecurityUserSecurityRole get(long securityUserId, long securityRoleId) {
		SecurityUserSecurityRole.where {
			securityUser == SecurityUser.load(securityUserId) &&
			securityRole == SecurityRole.load(securityRoleId)
		}.get()
	}

	static boolean exists(long securityUserId, long securityRoleId) {
		SecurityUserSecurityRole.where {
			securityUser == SecurityUser.load(securityUserId) &&
			securityRole == SecurityRole.load(securityRoleId)
		}.count() > 0
	}

	static SecurityUserSecurityRole create(SecurityUser securityUser, SecurityRole securityRole, boolean flush = false) {
		def instance = new SecurityUserSecurityRole(securityUser: securityUser, securityRole: securityRole)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(SecurityUser u, SecurityRole r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = SecurityUserSecurityRole.where {
			securityUser == SecurityUser.load(u.id) &&
			securityRole == SecurityRole.load(r.id)
		}.deleteAll()

		if (flush) { SecurityUserSecurityRole.withSession { it.flush() } }

		rowCount > 0
	}

	static void removeAll(SecurityUser u, boolean flush = false) {
		if (u == null) return

		SecurityUserSecurityRole.where {
			securityUser == SecurityUser.load(u.id)
		}.deleteAll()

		if (flush) { SecurityUserSecurityRole.withSession { it.flush() } }
	}

	static void removeAll(SecurityRole r, boolean flush = false) {
		if (r == null) return

		SecurityUserSecurityRole.where {
			securityRole == SecurityRole.load(r.id)
		}.deleteAll()

		if (flush) { SecurityUserSecurityRole.withSession { it.flush() } }
	}

	static constraints = {
		securityRole validator: { SecurityRole r, SecurityUserSecurityRole ur ->
			if (ur.securityUser == null) return
			boolean existing = false
			SecurityUserSecurityRole.withNewSession {
				existing = SecurityUserSecurityRole.exists(ur.securityUser.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['securityRole', 'securityUser']
		version false
	}
}
