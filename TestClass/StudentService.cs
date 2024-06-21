namespace LearnBlazor.NewFolder
{
    public class StudentModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Class { get; set; }
    }
    public class StudentService
    {
        public List<StudentModel> GetStudents()
        {
            return new List<StudentModel>
            {
                new StudentModel { Id = 1,Name= "AAA", Class= "First"},
                new StudentModel { Id = 2,Name = "BBB", Class= "First"}
            };
        }
    }
}
