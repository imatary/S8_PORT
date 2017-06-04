.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$FaceInfo;
.super Ljava/lang/Object;
.source "RegisteredNameListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceInfo"
.end annotation


# instance fields
.field final mFaceRect:Landroid/graphics/RectF;

.field final mFilePah:Ljava/lang/String;

.field final mName:Ljava/lang/String;

.field final mOrientation:I

.field final mPersonId:J

.field final mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$FaceInfo;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$FaceInfo;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$FaceInfo;->mPersonId:J

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$FaceInfo;->mFilePah:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$FaceInfo;->mUri:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$FaceInfo;->mFaceRect:Landroid/graphics/RectF;

    iput p8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter$FaceInfo;->mOrientation:I

    return-void
.end method
