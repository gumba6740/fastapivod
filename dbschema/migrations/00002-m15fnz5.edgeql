CREATE MIGRATION m15fnz5olx2fcjin6lrtugjtd4gvuac2khcq7eqqjtuqpg6nx4qq4q
    ONTO m1pjy2wps4aaoa6jjovxgb4dd7nsmo7qxfgpv754sabkzedupossja
{
  ALTER TYPE default::Movie {
      CREATE INDEX ON (.title);
  };
};
