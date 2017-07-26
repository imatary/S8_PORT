.class Lcom/naver/glink/android/sdk/ui/main/c$5;
.super Ljava/lang/Object;
.source "TransparentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/main/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/configure/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/main/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/main/c;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/main/c$5;->b:Lcom/naver/glink/android/sdk/ui/main/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/main/c$5;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/c$5;->b:Lcom/naver/glink/android/sdk/ui/main/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/c$5;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p2}, Lcom/naver/glink/android/sdk/ui/main/c;->b(Lcom/naver/glink/android/sdk/ui/main/c;Landroid/app/Activity;Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method
