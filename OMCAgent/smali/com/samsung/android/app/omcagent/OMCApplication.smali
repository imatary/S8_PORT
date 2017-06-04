.class public Lcom/samsung/android/app/omcagent/OMCApplication;
.super Landroid/app/Application;
.source "OMCApplication.java"


# static fields
.field private static m_Context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getOMCApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/OMCApplication;->m_Context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    sput-object p1, Lcom/samsung/android/app/omcagent/OMCApplication;->m_Context:Landroid/content/Context;

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/OMCApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ofdr16o12l"

    invoke-static {v0, v1}, Lcom/samsung/android/common/diagmon/DiagMon;->setup(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/common/diagmon/DiagMon;->reportIfFCOccurred()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/log/FileLog;->setTagName()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/OMCApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/log/FileLog;->setBootstrap(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/OMCApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/log/FileLog;->setSession(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/OMCApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/log/FileLog;->setOmcInfo(Landroid/content/Context;)V

    sput-object p0, Lcom/samsung/android/app/omcagent/OMCApplication;->m_Context:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->checkOMCEnable()Z

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "OMCApplication Start !"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/common/util/GeneralUtils;->startProcessLog(I)V

    return-void
.end method
