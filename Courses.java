package hibernate;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "courses")
public class Courses implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name; // Subject name

    private String description; // Course description

    @OneToMany(mappedBy = "courses", cascade = CascadeType.ALL) // Ensure this matches the Modules class name correctly
    private List<Modules> modules;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Modules> getModules() {
        return modules;
    }

    public void setModules(List<Modules> modules) {
        this.modules = modules;
    }
}
