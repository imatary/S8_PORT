.class public Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;
.super Ljava/lang/Object;
.source "SmartCallNotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SmartCallNotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusBarHelper"
.end annotation


# instance fields
.field private mIsExpandedViewEnabled:Z

.field private mIsNotificationEnabled:Z

.field private mIsSystemBarNavigationEnabled:Z

.field final synthetic this$0:Lcom/android/phone/SmartCallNotificationMgr;


# direct methods
.method private constructor <init>(Lcom/android/phone/SmartCallNotificationMgr;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/SmartCallNotificationMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    iput-boolean v0, p0, Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    iput-boolean v0, p0, Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SmartCallNotificationMgr;Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/SmartCallNotificationMgr;)V

    return-void
.end method
