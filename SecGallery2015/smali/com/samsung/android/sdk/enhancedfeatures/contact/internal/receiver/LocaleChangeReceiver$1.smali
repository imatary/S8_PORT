.class Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver$1;
.super Ljava/lang/Object;
.source "LocaleChangeReceiver.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPresenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error Code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Error Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LocaleChangeReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;)V
    .locals 2

    const-string/jumbo v0, "Set Locale change Success"

    const-string/jumbo v1, "LocaleChangeReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
