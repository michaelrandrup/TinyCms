using TinySql.Attributes;
using System;

namespace TinyCms.Models
{	public partial class Library
{
		[PK]
		public Guid  Id { get; set; }

		public String  Description { get; set; }

		[FK("LibraryType","Id","dbo","FK_Library_LibraryType")]
		public Int32  LibraryTypeId { get; set; }

		public String  Name { get; set; }

		public String  PathRoot { get; set; }

	}
}