.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;
.super Ljava/lang/Object;
.source "MoreInfoItemVisualPeopleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeopleData"
.end annotation


# instance fields
.field public final item:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;->item:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    return-void
.end method
