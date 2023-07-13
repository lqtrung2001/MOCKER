# MOCKER

#### The Mocker - Console, mock everything you need by quickly and easily

### GRADUATION THESIS

**Name:** Building a website **MOCKER** generates data for system testing.

**Detail:** Website construction can generate dummy data for testing the system.

**Instructor:** ThS. Mai Anh Thơ

**Members:**

| Student ID |       Name       |   Phone    |             Email              |
|:----------:|:----------------:|:----------:|:------------------------------:|
|  19110489  | Lương Quốc Trung | 0935544787 | 19110489@student.hcmute.edu.vn |
|  19110498  |   Đỗ Quốc Việt   | 0393014871 | 19110498@student.hcmute.edu.vn |

**Major:** Information Technology / Software Technology

**Technologies:**

1. Front - End: [Angular Framework](https://angular.io/), [Typescript](https://www.typescriptlang.org/), HTML, SCSS.
2. Back-end: [JAVA](https://www.java.com/), [Spring Framework](https://spring.io/).
3. Database: [Postgresql](https://www.postgresql.org/).
4. [Docker](https://www.docker.com/).

**References:**

* Github: https://github.com/NachiLuong/MOCKER
* Mockaroo: https://www.mockaroo.com/
* Other libraries: [mapstruct](https://mapstruct.org/), [project-lombok](https://projectlombok.org/), [tailwindcss](https://tailwindcss.com/),
  [fontawesome](https://fontawesome.com/)...

### What is Mocker?

Mocker is a website that helps you generate basic data for testing your website. When you have data from Mocker you can
put them in your database so that you can check your website when there is data, it works stably or not. In addition,
Mocker also helps you and your co-workers form groups to share data together. Currently Mocker only supports basic data
and simple relationships. In the future we will try to develop to serve more of your needs.

### **How to run project:**

**1. Get source code:** Clone source code from GitHub: https://github.com/NachiLuong/MOCKER.

**2. Configure the Database:**

* Download the [docker desktop,](https://www.docker.com/products/docker-desktop/) or you can use docker in windows sub
  system for linux.
* Running the docker-compose.yaml file to create a container, the process will pull postgresSQL with latest version and
  then initialing your container.

**3. Back - end:**

* Maven clean and maven install (_mvn clean install_) to create api in mocker-back.
* Run backend (run in file MockerBackApplication.java file) to initialize tables.
* Connect database and run scripts file that are configured in DATABASE folder.

**4. Front - end:**

* Run _**npm install**_ in terminal to install packages.
* Run **_ng serve_** in terminal to run front-end.

**5. Result**: After run back-end and font-end, open http://localhost:4200/ for more detail.

### How to download data in Mocker?

If you only want to download one table, you can quickly create one above. Give it a name, choose the type of generation
you want and then configure each field according to your needs. Once the columns are configured, you will configure the
table by naming them, choosing the number of rows you want to generate and the data format you want to export. Currently
we support 4 formats which are SQL, JSON, XML and CSV. You can then preview the data by clicking the Preview button and
clicking the Download button to download it.

### If you want to save and download more complex data ?

**Step 1:** Access to a Group, this will be where you and your friends jointly manage, create Projects and share data
with each other.

**Step 2:** Access to a Project, each Project corresponds to each project that your group works together.

**Step 3:** We continue to access the Schema where the Project's tables are stored.

**Step 4:** Then create the tables you want as instructed above.

**Step 5:** Once there are tables, we will create a relationship between the tables by clicking on 2 fields of 2
different tables. Note that fields must use data types to be linked.

**Step 6:** After the above steps you have the complete data, you can press the Preview button and then click the eye
icon to open each panel to preview the data or press the Download button to download the data.

#### If you have any questions, please contact our fan page:

_[Mocker Console fan page](https://www.facebook.com/Mocker-Console-108216655669836)_.

Thank you for your interest. 😊😊😊