.class final Lcom/android/phone/PhoneUtilsJpn$2;
.super Ljava/lang/Object;
.source "PhoneUtilsJpn.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtilsJpn;->showAlertDialogRetry(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsJpn;->-set0(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
