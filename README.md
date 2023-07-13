# MOCKER
### _"The Mocker - Console, mock everything you need by quickly and easily"_
### ESSAY ON SOFTWARE ENGINEERING

**Name:** Building a website MOCKER generates data for system testing.

**Detail:** Website construction can generate dummy data for testing data for the system.

**Instructor:** Mai Anh Tho

**Members:**

| Student ID |       Name       |   Phone    |             Email              |
|:----------:|:----------------:|:----------:|:------------------------------:|
|  19110489  | Luong Quoc Trung | 0935544787 | 19110489@student.hcmute.edu.vn |
|  19110498  |   Do Quoc Viet   | 0393014871 | 19110498@student.hcmute.edu.vn |

**Major:** Information Technology

**Technical:**
1. Front-end: Angular, Typescript, HTML, SCSS.
2. Back-end: Spring Boot
3. Database: Postgresql
4. Docker

**Source:**

* Github: https://github.com/NachiLuong/MOCKER
* Mockaroo: https://www.mockaroo.com/



### What is Mocker?

Mocker is a website that helps you generate basic data for testing your website. When you have data from Mocker you can put them in your database so that you can check your website when there is data, it works stably or not. In addition, Mocker also helps you and your co-workers form groups to share data together. Currently Mocker only supports basic data and simple relationships. In the future we will try to develop to serve more of your needs.

### **How to run project:**
**1. Get source code:** Clone source code from GitHub: https://github.com/NachiLuong/MOCKER.


**2. Back-end**

* Run backend (run in file MockerBackApplication) to initialize tables.
* Maven clean and maven install (_mvn clean install_) to create api in mocker-back.
* Connect database and open file database in mocker-back and  run script.
* Run backend again.

**3. Front-end**

* Run _**npm install**_ in terminal to install packages.
* Run **_ng serve_** in terminal to run front-end.

**4. Result**: After run back-end and font-end, open http://localhost:4200/.

### How to download data in Mocker?

If you only want to download one table, you can quickly create one above. Give it a name, choose the type of generation you want and then configure each field according to your needs. Once the columns are configured, you will configure the table by naming them, choosing the number of rows you want to generate and the data format you want to export. Currently we support 4 formats which are SQL, JSON, XML and CSV. You can then preview the data by clicking the Preview button and clicking the Download button to download it
### If you want to save and download more complex data ?

**Step 1:**	Access to a Group, this will be where you and your friends jointly manage, create Projects and share data with each other.

**Step 2:**	Access to a Project, each Project corresponds to each project that your group works together.

**Step 3:**	We continue to access the Schema where the Project's tables are stored.

**Step 4:**	Then create the tables you want as instructed above.

**Step 5:**	Once there are tables, we will create a relationship between the tables by clicking on 2 fields of 2 different tables. Note that fields must use data types to be linked.

**Step 6:**	After the above steps you have the complete data, you can press the Preview button and then click the eye icon to open each panel to preview the data or press the Download button to download the data.

#### If you have any questions, please contact our fanpage: _[Mocker Console](https://www.facebook.com/Mocker-Console-108216655669836)_