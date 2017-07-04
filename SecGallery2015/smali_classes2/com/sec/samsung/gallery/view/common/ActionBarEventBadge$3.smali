.class Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$3;
.super Ljava/lang/Object;
.source "ActionBarEventBadge.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$3;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$3;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$602(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$3;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$700(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$3;->this$0:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->access$800(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Landroid/view/View;)V

    const/4 v0, 0x0

    return v0
.end method
