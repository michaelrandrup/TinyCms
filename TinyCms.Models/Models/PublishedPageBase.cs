using System;
using System.Collections.Generic;
using TinySql.Attributes;

namespace TinyCms.Models
{	public partial class PublishedPageBase
{
		[FK("PageType","Id","dbo","FK_PublishedPageBase_PageType")]
		[PK]
		public String  Culture { get; set; }

		[PK]
		public String  Name { get; set; }

		[PK]
		public Guid  PageFolderId { get; set; }

		public DateTime  CreatedOn { get; set; }

		public String  Description { get; set; }

		public Guid  Id { get; set; }

		public Boolean  IsExternal { get; set; }

		public String  Model { get; set; }

		public DateTime  ModifiedOn { get; set; }

		[FK("PageAudience","Id","dbo","FK_PublishedPageBase_PageAudience")]
		public Nullable<Int32>  PageAudienceId { get; set; }

		[FK("PageSecurity","Id","dbo","FK_PublishedPageBase_PageSecurity")]
		public Int32  PageSecurityId { get; set; }

		[FK("PageFolderBase","Id","dbo","FK_PublishedPageBase_PageFolderBase")]
		public Nullable<Guid>  PageTypeId { get; set; }

		public Boolean  RequireSsl { get; set; }

		public String  Title { get; set; }

	}
}
