import type { Employee } from "../types/employee";
import { useNavigate } from "react-router-dom";

function EmployeeTable({ employees }: { employees: Employee[] }) {
  const navigate = useNavigate();

  const handleAddEmployee = () => {
    navigate("/create");
  };

  return (
    <>
      <h2>List of Employees</h2>
      <button onClick={handleAddEmployee}>Add Employee</button>
      <table>
        <thead>
          <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Date Hired</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          {employees.map((employee) => (
            <tr key={employee.id}>
              <td>{employee.first_name}</td>
              <td>{employee.last_name}</td>
              <td>{employee.date_hired}</td>
              <td>
                <button>Edit</button>
                <button>Delete</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </>
  );
}

export default EmployeeTable;
