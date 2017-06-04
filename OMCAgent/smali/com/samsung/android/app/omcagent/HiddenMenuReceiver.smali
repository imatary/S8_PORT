.class public Lcom/samsung/android/app/omcagent/HiddenMenuReceiver;
.super Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.source "HiddenMenuReceiver.java"


# static fields
.field private static ACTION_SECRET_CODE:Ljava/lang/String;

.field private static OMC_KEYSTRING_ALWAYS_OPEN:Ljava/lang/String;

.field private static OMC_KEYSTRING_PRD_BLOCK:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.provider.Telephony.SECRET_CODE"

    sput-object v0, Lcom/samsung/android/app/omcagent/HiddenMenuReceiver;->ACTION_SECRET_CODE:Ljava/lang/String;

    const-string v0, "66283782"

    sput-object v0, Lcom/samsung/android/app/omcagent/HiddenMenuReceiver;->OMC_KEYSTRING_PRD_BLOCK:Ljava/lang/String;

    const-string v0, "6628378"

    sput-object v0, Lcom/samsung/android/app/omcagent/HiddenMenuReceiver;->OMC_KEYSTRING_ALWAYS_OPEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    const/high16 v3, 0x10000000

    sget-object v2, Lcom/samsung/android/app/omcagent/HiddenMenuReceiver;->ACTION_SECRET_CODE:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/omcagent/HiddenMenuReceiver;->OMC_KEYSTRING_PRD_BLOCK:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/app/omcagent/HiddenMenuReceiver;->OMC_KEYSTRING_ALWAYS_OPEN:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
