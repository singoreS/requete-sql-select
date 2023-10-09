-- récupérer les programmes liées aux associations
SELECT
    programme.*,
    association.*
FROM 
    Intergen.programme
JOIN
    Intergen.association
ON
    association.id = programme.association_id;


-- récupérer les responsables liés aux établissements
SELECT 
    responsable.*, etablissement.*
FROM 
    Intergen.responsable
JOIN 
    Intergen.etablissement
ON 
    etablissement.id = responsable.etablissement_id;

-- récupérer les activités d'un programme
SELECT 
    programme.*, activiter.*
FROM 
    Intergen.programme
JOIN 
    Intergen.activiter
JOIN 
    Intergen.programme_activiter
ON 
    programme_activiter.programme_id = programme.id
AND 
    programme_activiter.activiter_id = activiter.id
    -- WHERE programme.id = 12
;