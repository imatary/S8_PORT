.class Lcom/naver/glink/android/sdk/ui/floating/a$1;
.super Ljava/lang/Object;
.source "FullWidgetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/a$1;->a:Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/a$1;->a:Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/a;->dismiss()V

    return-void
.end method
