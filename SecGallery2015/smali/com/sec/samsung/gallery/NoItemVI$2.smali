.class Lcom/sec/samsung/gallery/NoItemVI$2;
.super Ljava/lang/Object;
.source "NoItemVI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/NoItemVI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/NoItemVI;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/NoItemVI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/NoItemVI$2;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI$2;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    invoke-static {v0}, Lcom/sec/samsung/gallery/NoItemVI;->access$200(Lcom/sec/samsung/gallery/NoItemVI;)V

    const/4 v0, 0x0

    return v0
.end method
