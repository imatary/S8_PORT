.class final Lcom/naver/glink/android/sdk/c$4;
.super Ljava/lang/Object;
.source "G.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/c;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/c$4;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/c;->a()Lcom/naver/glink/android/sdk/ui/floating/c;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/c$4;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/c$4;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/c;->a(Landroid/app/Activity;Landroid/app/FragmentManager;)V

    return-void
.end method
