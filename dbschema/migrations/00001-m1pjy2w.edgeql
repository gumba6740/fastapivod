CREATE MIGRATION m1pjy2wps4aaoa6jjovxgb4dd7nsmo7qxfgpv754sabkzedupossja
    ONTO initial
{
  CREATE FUTURE no_linkful_computed_splats;
  CREATE TYPE default::Person {
      CREATE REQUIRED PROPERTY name: std::str;
  };
  CREATE TYPE default::Movie {
      CREATE MULTI LINK actors: default::Person;
      CREATE PROPERTY title: std::str;
  };
};
