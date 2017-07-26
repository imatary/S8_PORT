.class final Lcom/naver/glink/android/sdk/ui/main/b$3;
.super Ljava/lang/Object;
.source "MainHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/main/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/main/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/main/a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/main/b$3;->a:Lcom/naver/glink/android/sdk/ui/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/b$3;->a:Lcom/naver/glink/android/sdk/ui/main/a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/main/a;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
