.class Lcom/android/phone/DsaPhoneNumber$12;
.super Ljava/lang/Object;
.source "DsaPhoneNumber.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DsaPhoneNumber;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DsaPhoneNumber;


# direct methods
.method constructor <init>(Lcom/android/phone/DsaPhoneNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DsaPhoneNumber$12;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$12;->this$0:Lcom/android/phone/DsaPhoneNumber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DsaPhoneNumber;->softkeyRun1(Landroid/view/View;)V

    return-void
.end method
