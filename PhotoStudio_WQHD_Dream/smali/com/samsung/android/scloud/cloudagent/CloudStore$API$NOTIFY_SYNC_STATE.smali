.class public final Lcom/samsung/android/scloud/cloudagent/CloudStore$API$NOTIFY_SYNC_STATE;
.super Ljava/lang/Object;
.source "CloudStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/cloudagent/CloudStore$API;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NOTIFY_SYNC_STATE"
.end annotation


# static fields
.field public static final SYNC_NOW_COMPLETE:Ljava/lang/String; = "sync_now_complete"

.field public static final SYNC_NOW_DISABLE_SYNC_TO_SERVER:Ljava/lang/String; = "sync_now_disable_sync_to_server"

.field public static final SYNC_NOW_FAIL:Ljava/lang/String; = "sync_now_fail"

.field public static final SYNC_NOW_LIST_NOT_EXIST:Ljava/lang/String; = "sync_now_list_not_exist"

.field public static final SYNC_NOW_START:Ljava/lang/String; = "sync_now_start"

.field public static final SYNC_NOW_STORAGE_FULL:Ljava/lang/String; = "sync_now_storage_full"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
