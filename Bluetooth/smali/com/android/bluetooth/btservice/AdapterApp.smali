.class public Lcom/android/bluetooth/btservice/AdapterApp;
.super Landroid/app/Application;
.source "AdapterApp.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterApp"

.field public static mContext:Landroid/content/Context;

.field private static sRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    const-string/jumbo v0, "bluetooth_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lcom/android/bluetooth/btservice/AdapterApp;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/broadcom/bt/service/ProfileConfig;->init(Landroid/content/Context;)V

    return-void
.end method
