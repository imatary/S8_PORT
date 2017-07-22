.class public Lcom/android/phone/InCallImsListener;
.super Ljava/lang/Object;
.source "InCallImsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallImsListener$InCallImsEventListener;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInCallImsListener:Lcom/android/phone/InCallImsListener;

.field private static mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

.field private static mService:Lcom/sec/ims/volte2/IVolteService;

.field private static mSvcConn:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0()Lcom/sec/ims/volte2/IVolteService;
    .locals 1

    sget-object v0, Lcom/android/phone/InCallImsListener;->mService:Lcom/sec/ims/volte2/IVolteService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;
    .locals 0

    sput-object p0, Lcom/android/phone/InCallImsListener;->mService:Lcom/sec/ims/volte2/IVolteService;

    return-object p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/InCallImsListener;->callerNameIDLookup(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/InCallImsListener;->mInCallImsListener:Lcom/android/phone/InCallImsListener;

    sput-object v0, Lcom/android/phone/InCallImsListener;->mSvcConn:Landroid/content/ServiceConnection;

    sput-object v0, Lcom/android/phone/InCallImsListener;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/phone/InCallImsListener;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/android/phone/InCallImsListener;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    return-void
.end method

.method private static callerNameIDLookup(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "sipmessage"

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "ISO-8859-1"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v5, "content://com.cequint.ecid/lookup"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v5, Lcom/android/phone/InCallImsListener;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v5, "[InCallImsListener]"

    const-string/jumbo v6, "Caller Name ID returnUri is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "[InCallImsListener]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception calling ECIDContentProvider.insert()::: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/InCallImsListener;
    .locals 1

    sget-object v0, Lcom/android/phone/InCallImsListener;->mInCallImsListener:Lcom/android/phone/InCallImsListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/InCallImsListener;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/InCallImsListener;-><init>(Landroid/content/Context;Lcom/android/phone/PhoneGlobals;)V

    sput-object v0, Lcom/android/phone/InCallImsListener;->mInCallImsListener:Lcom/android/phone/InCallImsListener;

    :cond_0
    sget-object v0, Lcom/android/phone/InCallImsListener;->mInCallImsListener:Lcom/android/phone/InCallImsListener;

    return-object v0
.end method


# virtual methods
.method public registerCallStatusListener()V
    .locals 4

    const-string/jumbo v1, "[InCallImsListener]"

    const-string/jumbo v2, "registerCallStatusListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.imsservice"

    const-string/jumbo v2, "com.sec.internal.ims.imsservice.VolteService2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/android/phone/InCallImsListener$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallImsListener$1;-><init>(Lcom/android/phone/InCallImsListener;)V

    sput-object v1, Lcom/android/phone/InCallImsListener;->mSvcConn:Landroid/content/ServiceConnection;

    sget-object v1, Lcom/android/phone/InCallImsListener;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/phone/InCallImsListener;->mSvcConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
