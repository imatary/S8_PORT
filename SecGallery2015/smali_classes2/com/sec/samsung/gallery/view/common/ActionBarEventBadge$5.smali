.class Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$5;
.super Ljava/lang/Object;
.source "ActionBarEventBadge.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->setEventBadgeViewListener(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$5;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$5;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "101"

    const-string/jumbo v1, "1051"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$5;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$5;->val$count:I

    # invokes: Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->doActionUp(I)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$900(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
