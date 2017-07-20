.class Lcom/android/phone/Enhanced4GLTE$3;
.super Landroid/database/ContentObserver;
.source "Enhanced4GLTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Enhanced4GLTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Enhanced4GLTE;


# direct methods
.method constructor <init>(Lcom/android/phone/Enhanced4GLTE;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/Enhanced4GLTE$3;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE$3;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-static {v0}, Lcom/android/phone/Enhanced4GLTE;->-get0(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Enhanced4GLTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange() getMobileDataEnabled() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE$3;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-static {v2}, Lcom/android/phone/Enhanced4GLTE;->-wrap0(Lcom/android/phone/Enhanced4GLTE;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE$3;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-static {v0}, Lcom/android/phone/Enhanced4GLTE;->-get0(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE$3;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-static {v1}, Lcom/android/phone/Enhanced4GLTE;->-wrap0(Lcom/android/phone/Enhanced4GLTE;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
