.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCDef;
.super Ljava/lang/Object;
.source "OMCDef.java"


# static fields
.field public static final MAX_RETRY:I = 0x2

.field public static final SERVERID:Ljava/lang/String; = "q95ikwe7b6"

.field public static URL_TYPE:I = 0x0

.field public static final URL_TYPE_DEVELOP:I = 0x0

.field public static final URL_TYPE_SERVICE:I = 0x2

.field public static final URL_TYPE_VERIFY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCDef;->URL_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServerHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCDef;->URL_TYPE:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getOmcDomainRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api.omc.samsungdm.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "http://omc-dev-api-796588106.ap-northeast-1.elb.amazonaws.com"

    goto :goto_0

    :pswitch_1
    const-string v0, "http://omc-stg-api-734037852.ap-northeast-1.elb.amazonaws.com"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setServerType(I)V
    .locals 0

    sput p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCDef;->URL_TYPE:I

    return-void
.end method
