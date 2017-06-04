.class public Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;
.super Lcom/samsung/android/app/omcagent/omc/OmcInfo;
.source "TargetOmcInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo$Key;
    }
.end annotation


# static fields
.field public static instance:Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 5

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    :try_start_0
    const-string v4, "UTF-8"

    invoke-interface {v2, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->version:Ljava/lang/String;

    :cond_1
    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->model:Ljava/lang/String;

    :cond_2
    const-string v4, "mcc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->mcc:Ljava/lang/String;

    :cond_3
    const-string v4, "mnc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->mnc:Ljava/lang/String;

    :cond_4
    const-string v4, "spn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->spn:Ljava/lang/String;

    :cond_5
    const-string v4, "gid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/omc/TargetOmcInfo;->gid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_6
    :goto_2
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
