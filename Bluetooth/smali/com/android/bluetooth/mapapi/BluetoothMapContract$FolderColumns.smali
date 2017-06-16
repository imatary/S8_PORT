.class public interface abstract Lcom/android/bluetooth/mapapi/BluetoothMapContract$FolderColumns;
.super Ljava/lang/Object;
.source "BluetoothMapContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapapi/BluetoothMapContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FolderColumns"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "accountKey"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final NAME:Ljava/lang/String; = "CASE parentKey WHEN -1 THEN CASE type WHEN 0 THEN \'inbox\' WHEN 4 THEN \'outbox\' WHEN 5 THEN \'sent\' WHEN 6 THEN \'deleted\' WHEN 3 THEN \'draft\' ELSE displayName END ELSE displayName END"

.field public static final PARENT_FOLDER_ID:Ljava/lang/String; = "parentKey"

.field public static final PARENT_SERVER_ID:Ljava/lang/String; = "parentServerId"

.field public static final SERVER_ID:Ljava/lang/String; = "serverId"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final _ID:Ljava/lang/String; = "_id"
