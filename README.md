# fs1030-join-cat-cafe
Cat Cafe exercise with join tables


Scenario: We are starting our own cat cafe and we will need to keep track on the cats being adopted from our shop. Afterwards, we'll need to sort through our cats!

Instructions:

1. Open MySQL

2. Create a database and name it cat_cafe_join

3. Create a table named `owners` in your database with the following variables:

- id
- first_name
- last_name
- email
- street_address
- phone_number

4.  Insert the following owners below: <br />

```
+----+--------+------------+--------+----------+
| id | name   | breed      | gender | neutered |
+----+--------+------------+--------+----------+
|  1 | Tuna   | Siamese    | Female |        1 |
|  2 | Marla  | Tabby      | Female |        0 |
|  3 | Sam    | Maine Coon | Male   |        0 |
|  4 | Cheeto | Naked      | Male   |        1 |
|  5 | Toby   | Siamese    | Male   |        0 |
+----+--------+------------+--------+----------+
```

5. Create a table named `vet_clinics` in your database with the following variables:

- id
- clinic_name
- vet_first_name
- vet_last_name
- email
- address
- phone_number

6.  Insert the following vet clinics below: <br />

```
+----+--------+------------+--------+----------+
| id | name   | breed      | gender | neutered |
+----+--------+------------+--------+----------+
|  1 | Tuna   | Siamese    | Female |        1 |
|  2 | Marla  | Tabby      | Female |        0 |
|  3 | Sam    | Maine Coon | Male   |        0 |
|  4 | Cheeto | Naked      | Male   |        1 |
|  5 | Toby   | Siamese    | Male   |        0 |
+----+--------+------------+--------+----------+
```


7. Create a table named `cats` in your database with the following variables:

- id
- name
- breed
- gender
- neutered (true or false)
- owner_id
- vet_clinic_id

8.  Insert the following cats below: <br />

```
+----+--------+------------+--------+----------+
| id | name   | breed      | gender | neutered |
+----+--------+------------+--------+----------+
|  1 | Tuna   | Siamese    | Female |        1 |
|  2 | Marla  | Tabby      | Female |        0 |
|  3 | Sam    | Maine Coon | Male   |        0 |
|  4 | Cheeto | Naked      | Male   |        1 |
|  5 | Toby   | Siamese    | Male   |        0 |
+----+--------+------------+--------+----------+
```



9.  We need to contact Tuna's owner, get the owner's full record.

10. Our cat cafe limits owners to adopt a max of 3 cats. Jen wants to adopt another cat, find out if Jen is within the 3-cat adoption limit.

11.  Find the cats that need to be neutered.

12.  We need to contact the vet of those cats that need to be neutered to provide the feline health records, find the vet.

13. Jen has informed you that Tuna is going to be switching vet clinics due to her special needs, the new vet contact info is below. Update Tuna's vet information in the db.

  - Clinic: Happy Cat Clinic
  - Vet: Mauro Medden
  - Email: mauro@email.com
  - Street address: 123 Colab Street
  - Phone: 111-111-2222

