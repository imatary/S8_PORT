.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$22;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->createDialogTty(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

.field final synthetic val$prvTtyMode:I


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$22;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iput p2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$22;->val$prvTtyMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$22;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get1(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/TtyListPreference;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$22;->val$prvTtyMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$22;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap0(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_tty_mode"

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$22;->val$prvTtyMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
