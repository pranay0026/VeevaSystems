use veeva;

CREATE TABLE documents (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    status VARCHAR(30),
    major_version_no INT,
    document_type VARCHAR(50)
);
INSERT INTO documents (id, name, status, major_version_no, document_type)
VALUES
(1, 'Drug Safety Report', 'Approved', 3, 'Report'),
(2, 'Clinical Trial Protocol', 'Approved', 2, 'legal'),
(3, 'Patient Information Sheet', 'Promotion', 1, 'Information'),
(4, 'Regulatory Submission', 'Pending', 4, 'legal'),
(5, 'Study Report', 'Approved', 5, 'Report'),
(6, 'Safety Guidelines', 'Draft', 2, 'Guideline'),
(7, 'Clinical Data Report', 'Approved', 3, 'Report'),
(8, 'Manufacturing Procedure', 'Pending', 1, 'legal'),
(9, 'Investigator Brochure', 'Approved', 6, 'Brochure'),
(10, 'Risk Management Plan', 'Promotion', 2, 'legal');

SELECT *
FROM documents
WHERE status IN ('Approved','Promotion')
AND document_type='legal'
ORDER BY name;
