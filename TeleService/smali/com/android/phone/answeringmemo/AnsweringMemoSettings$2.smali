.class Lcom/android/phone/answeringmemo/AnsweringMemoSettings$2;
.super Ljava/lang/Object;
.source "AnsweringMemoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->showMemStatusDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    const-class v2, Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-virtual {v1, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
