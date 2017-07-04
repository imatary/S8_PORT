.class Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;
.super Ljava/lang/Object;
.source "AbstractActionBarForSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const-wide/16 v2, 0x8

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$1;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12$2;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
