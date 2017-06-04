.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags$2;
.super Ljava/lang/Object;
.source "MoreInfoItemTags.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;->setAddBtn()Landroid/widget/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processAdd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;->launchAddTagsActivity()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags$2;->processAdd()V

    return-void
.end method
