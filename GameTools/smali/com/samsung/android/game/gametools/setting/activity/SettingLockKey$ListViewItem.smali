.class public Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$ListViewItem;
.super Ljava/lang/Object;
.source "SettingLockKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewItem"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$ListViewItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey$ListViewItem;->name:Ljava/lang/String;

    return-object v0
.end method
