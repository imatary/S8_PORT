.class Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$2;
.super Ljava/lang/Object;
.source "TimeViewActionBarForMultiPick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->updateDoneButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const v2, 0x7f12007a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;)Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    return-void
.end method
