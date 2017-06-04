.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$9;
.super Ljava/lang/Object;
.source "MoreInfo.java"

# interfaces
.implements Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$9;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInputMethodShown()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$9;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsInputMethodShown:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$2100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Z

    move-result v0

    return v0
.end method

.method public setReadyToShowVisualCategory()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$9;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mSetReadyToShowVisualCategory:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$1902(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Z)Z

    return-void
.end method

.method public setReadyToShowVisualPeople()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$9;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mSetReadyToShowVisualPeople:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$2002(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Z)Z

    return-void
.end method

.method public startItemAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$9;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->showItemAnimation()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$1800(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    return-void
.end method
