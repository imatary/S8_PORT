.class Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$6;
.super Ljava/lang/Object;
.source "ActionBarEventBadge.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$6;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$6;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$6;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$6;->val$count:I

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$900(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
