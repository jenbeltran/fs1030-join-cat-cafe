# fs1030-join-cat-cafe
Cat Cafe exercise with join tables


Scenario: We are starting our own cat cafe and we will need to keep track on the cats being adopted from our shop. Afterwards, we'll need to sort through our cats!

Instructions:

1. Open MySQL

2. Create a database and name it cat_cafe_join

3. Create a table named `owners` in your database with the following variables. It's okay if owners don't have a street address and email, but we have to have everything else, in order to be able to contract them if something is wrong.

- id
- first_name
- last_name
- email
- street_address
- phone_number

4.  Insert the following owners below: 

- Jen Beltran, jenbeltran@email.com, 123 York Street, 416-777-7777
- Ha Pham, ha@email.com, 876 CN Tower Road, 416-888-9999
- Sally Duncan, sally@email.com, 728 Water Cres, 647-000-1111


5. Create a table named `vets` in your database with the following variables. It's okay if the clinic doesn't have an email but we need to have everything else!

- id
- vet_first_name
- vet_last_name
- clinic_name
- email
- address
- phone_number

6.  Insert the following vets below: <br />

- Meag Campbell, Meow Clinic, meowclinic@email.com, 3847 King Street, 416-222-4456
- Alan Castro, Colab Clinic, colabvetclinic@email.com, 283 East Hills Road, 647-222-9191
- Clinton Keating, Colab Clinic, colabvetclinic@email.com, 283 East Hills Road, 647-222-9191


7. Create a table named `cats` in your database with the following variables:

- id
- name
- breed
- gender
- neutered (true or false)
- owner_id
- vet_id

8.  Insert the following cats below: <br />

- Tuna, Siamese, Female, neutered, owner is Jen Beltran, vet is Clinton
- Marla, Tabby, Female, neutered, owner is Sally Duncan, clinic is Meow Clinic
- Sam, Maine Coon, Male, not neutered, owner is Ha Pham, vet is Meag
- Toby, Siamese, Male, not neutered, owner is Jen Beltran, vet is Clinton




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

