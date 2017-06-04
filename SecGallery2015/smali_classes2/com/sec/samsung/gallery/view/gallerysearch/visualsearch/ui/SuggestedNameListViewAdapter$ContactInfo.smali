.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;
.super Ljava/lang/Object;
.source "SuggestedNameListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactInfo"
.end annotation


# instance fields
.field final mName:Ljava/lang/String;

.field final mNeedToUpdatePhoto:Z

.field final mRawId:J

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;Ljava/lang/String;JZ)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;->mRawId:J

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;->mNeedToUpdatePhoto:Z

    return-void
.end method
