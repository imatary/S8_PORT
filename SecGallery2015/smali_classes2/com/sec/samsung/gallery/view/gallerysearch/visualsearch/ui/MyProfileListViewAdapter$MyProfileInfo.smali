.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;
.super Ljava/lang/Object;
.source "MyProfileListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyProfileInfo"
.end annotation


# instance fields
.field final mName:Ljava/lang/String;

.field final mNeedToUpdatePhoto:Z

.field final mPersonId:J

.field final mRawId:J

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;Ljava/lang/String;JJZ)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;->mRawId:J

    iput-wide p5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;->mPersonId:J

    iput-boolean p7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileInfo;->mNeedToUpdatePhoto:Z

    return-void
.end method
