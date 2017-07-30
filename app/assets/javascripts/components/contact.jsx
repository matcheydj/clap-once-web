function Contact(props) {
  return (
    <div key={props.id} data-id={props.id} className="contact-container">
      <div className="contact-name">{props.name}</div>
      <div className="contact-phone">{props.phoneNumber}</div>
      <div className="contact-footer">
        <button className="contact-delete-link">delete</button>
      </div>
    </div>
  )
}
