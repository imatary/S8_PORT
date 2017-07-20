.class Lcom/android/phone/answeringmemo/AnsweringMemoSettings$3;
.super Ljava/lang/Object;
.source "AnsweringMemoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$3;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "AnsweringMemoSettings"

    const-string/jumbo v1, "setToPreviousIndex :  onDismiss "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$3;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoSettings;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->-wrap2(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)V

    return-void
.end method
