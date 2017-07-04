.class Lcom/sec/samsung/gallery/NoItemVI$1;
.super Ljava/lang/Object;
.source "NoItemVI.java"

# interfaces
.implements Lcom/altamirasoft/path_animation/PathListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/NoItemVI$1;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineCapStyle(I)Landroid/graphics/Paint$Cap;
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getLineColor(I)I
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/NoItemVI;->access$100()I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/NoItemVI$1;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/NoItemVI;->access$000(Lcom/sec/samsung/gallery/NoItemVI;I)I

    move-result v0

    return v0
.end method
