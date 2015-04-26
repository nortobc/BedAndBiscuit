package bedandbiscuit.user

class SecurityRole {

	String authority

	static mapping = {
		cache true
		version false
	}

	static constraints = {
		authority blank: false, unique: true
	}
}
