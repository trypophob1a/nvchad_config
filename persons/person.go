package persons

type Person struct {
	Name      string `json:"name,omitempty"`
	Age       int    `json:"age,omitempty"`
	IsMarried bool   `json:"is_married,omitempty"`
}

// NewPerson creates a new Person
// example: NewPerson("Bob", 15, false)
// returns: Person{Name: "Bob", Age: 15, IsMarried: false}
func NewPerson(name string, age int, isMarried bool) Person {
	return Person{
		Name:      name,
		Age:       age,
		IsMarried: isMarried,
	}
}
