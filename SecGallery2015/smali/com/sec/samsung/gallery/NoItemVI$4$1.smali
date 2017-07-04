.class Lcom/sec/samsung/gallery/NoItemVI$4$1;
.super Ljava/lang/Object;
.source "NoItemVI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/NoItemVI$4;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/NoItemVI$4;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/NoItemVI$4;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/NoItemVI$4$1;->this$1:Lcom/sec/samsung/gallery/NoItemVI$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI$4$1;->this$1:Lcom/sec/samsung/gallery/NoItemVI$4;

    iget-object v0, v0, Lcom/sec/samsung/gallery/NoItemVI$4;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    invoke-static {v0}, Lcom/sec/samsung/gallery/NoItemVI;->access$200(Lcom/sec/samsung/gallery/NoItemVI;)V

    return-void
.end method
