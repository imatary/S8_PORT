.class Lcom/naver/glink/android/sdk/ui/main/c$3;
.super Ljava/lang/Object;
.source "TransparentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/main/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/configure/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/main/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/main/c;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/main/c$3;->a:Lcom/naver/glink/android/sdk/ui/main/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c$3;->a:Lcom/naver/glink/android/sdk/ui/main/c;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/main/c;->a(Lcom/naver/glink/android/sdk/ui/main/c;)Landroid/graphics/Point;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c$3;->a:Lcom/naver/glink/android/sdk/ui/main/c;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/main/c;->a(Lcom/naver/glink/android/sdk/ui/main/c;)Landroid/graphics/Point;

    move-result-object v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    return-void
.end method
