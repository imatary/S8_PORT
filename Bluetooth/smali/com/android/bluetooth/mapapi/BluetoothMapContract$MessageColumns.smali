.class public interface abstract Lcom/android/bluetooth/mapapi/BluetoothMapContract$MessageColumns;
.super Ljava/lang/Object;
.source "BluetoothMapContract.java"

# interfaces
.implements Lcom/android/bluetooth/mapapi/BluetoothMapContract$EmailMessageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapapi/BluetoothMapContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageColumns"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "accountKey"

.field public static final ATTACHMENT_MINE_TYPES:Ljava/lang/String; = "attachment_mime_types"

.field public static final ATTACHMENT_SIZE:Ljava/lang/String; = "attachmentSize"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final DATE:Ljava/lang/String; = "timeStamp"

.field public static final DEVILERY_STATE:Ljava/lang/String; = "delivery_state"

.field public static final FLAG_ATTACHMENT:Ljava/lang/String; = "flagAttachment"

.field public static final FLAG_HIGH_PRIORITY:Ljava/lang/String; = "importance"

.field public static final FLAG_LOADED:Ljava/lang/String; = "flagLoaded"

.field public static final FLAG_PROTECTED:Ljava/lang/String; = "0"

.field public static final FLAG_READ:Ljava/lang/String; = "flagRead"

.field public static final FOLDER_ID:Ljava/lang/String; = "mailboxKey"

.field public static final FROM_LIST:Ljava/lang/String; = "fromList"

.field public static final MESSAGE_SIZE:Ljava/lang/String; = "size"

.field public static final RECEPTION_STATE:Ljava/lang/String; = "CASE flagLoaded WHEN 1 THEN \'complete\' WHEN 2 THEN \'fractioned\' ELSE \'notification\' END"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final THREAD_ID:Ljava/lang/String; = "threadId"

.field public static final THREAD_NAME:Ljava/lang/String; = "thread_name"

.field public static final TO_LIST:Ljava/lang/String; = "toList"

.field public static final _ID:Ljava/lang/String; = "_id"
