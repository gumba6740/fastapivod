CREATE MIGRATION m1fjtj6jrwg7bscdqmwn2o6ti3rrwxilngjtlquqdljrs2sc7j7mia
    ONTO m1qpd4lmbjd4ncxb2bawbycsxwkvvpxcvj4kqg755h76q4b4q3vjtq
{
  CREATE ABSTRACT TYPE default::Auditable {
      CREATE REQUIRED PROPERTY created_at: std::cal::local_datetime {
          SET default := (std::cal::to_local_datetime(std::datetime_current(), 'Asia/Seoul'));
          SET readonly := true;
      };
  };
  CREATE TYPE default::Meeting EXTENDING default::Auditable {
      CREATE REQUIRED PROPERTY url_code: std::str {
          SET readonly := true;
          CREATE CONSTRAINT std::exclusive;
      };
  };
};
