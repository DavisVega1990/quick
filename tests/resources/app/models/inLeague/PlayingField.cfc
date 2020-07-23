component extends="quick.models.BaseEntity" accessors="true" {

	property name="fieldID";
	property name="clientID";
	property name="fieldName";

	variables._key = [ "fieldID", "clientID" ];

	function field() {
		return hasMany(
			relationName = "Game",
			foreignKey = [ "fieldID", "clientID" ],
			localKey = [ "fieldID", "clientID" ]
		);
	}

}
