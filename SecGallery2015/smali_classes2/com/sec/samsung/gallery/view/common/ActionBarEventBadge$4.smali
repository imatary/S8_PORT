.class Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$4;
.super Ljava/lang/Object;
.source "ActionBarEventBadge.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$4;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$4;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$800(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Landroid/view/View;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$4;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$200(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)V

    goto :goto_0
.end method
