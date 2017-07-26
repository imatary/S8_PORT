.class Lcom/naver/glink/android/sdk/ui/floating/a$a;
.super Landroid/app/Dialog;
.source "FullWidgetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/floating/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/a;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/a$a;->a:Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/a$a;->a:Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/a;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/a$a;->a:Lcom/naver/glink/android/sdk/ui/floating/a;

    invoke-direct {p0, p2, p3, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method
