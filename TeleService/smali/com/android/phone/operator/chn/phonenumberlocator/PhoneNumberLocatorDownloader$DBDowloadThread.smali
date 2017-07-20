.class Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;
.super Ljava/lang/Thread;
.source "PhoneNumberLocatorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DBDowloadThread"
.end annotation


# instance fields
.field private client:Landroid/net/http/AndroidHttpClient;

.field private isCanceledByUser:Z

.field private mBinTmpFile:Ljava/lang/String;

.field mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

.field private mVersionTmpFile:Ljava/lang/String;

.field private mbDownloadByZip:Z

.field private request:Lorg/apache/http/client/methods/HttpGet;

.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mbDownloadByZip:Z

    return-void
.end method

.method private doUnZip(Ljava/lang/String;Ljava/lang/String;)I
    .locals 26

    const/16 v4, 0x2000

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x2000

    move/from16 v0, v21

    new-array v5, v0, [B

    const/4 v13, 0x0

    const/16 v17, 0x0

    :try_start_0
    new-instance v20, Ljava/util/zip/ZipInputStream;

    new-instance v21, Ljava/io/BufferedInputStream;

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v21 .. v22}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "decompress file:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v21, v0

    const-string/jumbo v22, "decompress file error: mZipEntry isDirectory!"

    invoke-static/range {v21 .. v22}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v16, -0x1

    :goto_0
    if-eqz v20, :cond_0

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    const/16 v21, 0x0

    if-eqz v21, :cond_1

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v11, 0x0

    :cond_1
    :goto_2
    move-object/from16 v17, v20

    :cond_2
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Decompress zip file finish, file size = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", take time:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sub-long v24, v8, v18

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    return v16

    :cond_3
    :try_start_4
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_5

    :cond_4
    :goto_4
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    :try_start_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_7

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v5, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int v16, v16, v13

    goto :goto_5

    :cond_5
    :try_start_6
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v6

    move-object/from16 v17, v20

    :goto_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "decompress file error:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v16, -0x3

    if-eqz v17, :cond_6

    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_6
    :goto_7
    if-eqz v11, :cond_2

    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_7
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_8
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v21, v0

    const-string/jumbo v22, "decompress file error: getNextEntry null!"

    invoke-static/range {v21 .. v22}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/16 v16, -0x2

    goto/16 :goto_0

    :catch_1
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "decompress file error:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    const/16 v16, -0x4

    goto/16 :goto_1

    :catch_2
    move-exception v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "file close failed error : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "decompress file error:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    const/16 v16, -0x4

    goto/16 :goto_7

    :catch_4
    move-exception v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "file close failed error : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v21

    :goto_8
    if-eqz v17, :cond_9

    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :cond_9
    :goto_9
    if-eqz v11, :cond_a

    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    const/4 v11, 0x0

    :cond_a
    :goto_a
    throw v21

    :catch_5
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "decompress file error:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    const/16 v16, -0x4

    goto :goto_9

    :catch_6
    move-exception v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "file close failed error : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    goto :goto_a

    :catchall_1
    move-exception v21

    move-object/from16 v17, v20

    goto :goto_8

    :catchall_2
    move-exception v21

    move-object/from16 v17, v20

    move-object v11, v12

    goto :goto_8

    :catch_7
    move-exception v6

    goto/16 :goto_6

    :catch_8
    move-exception v6

    move-object/from16 v17, v20

    move-object v11, v12

    goto/16 :goto_6
.end method

.method private downLoadZipFileAndUnZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "zip file downloaded, fileInfo.fileSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    invoke-static {v3, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->doUnZip(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    int-to-long v4, v2

    iput-wide v4, v1, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    iput-object p1, v1, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileName:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    invoke-static {v3, p2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "downLoadZipFileAndUnZip file error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v46, v0

    if-eqz v46, :cond_0

    const/16 v46, 0x0

    return-object v46

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    const-string/jumbo v47, "CDDownloadThread : run : DownloadThread Started"

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    move-object/from16 v34, p2

    const/16 v33, 0x0

    move-object/from16 v11, p1

    new-instance v18, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;

    invoke-direct/range {v18 .. v18}, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;-><init>()V

    const/16 v22, 0x0

    const/4 v10, 0x0

    const/16 v38, 0x0

    const-string/jumbo v32, "bin"

    const/16 v41, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    const-string/jumbo v47, "before start create temp file"

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    const-string/jumbo v47, "after start create temp file"

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    const-wide/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileName:Ljava/lang/String;

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "downloadFileByWebkit currentTempFilePath = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v28, 0x0

    const/16 v27, 0x0

    const v46, 0x19000

    :try_start_0
    move/from16 v0, v46

    new-array v12, v0, [B

    const/4 v6, 0x0

    const-wide/16 v44, 0x0

    const-string/jumbo v46, "Android"

    invoke-static/range {v46 .. v46}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    const-string/jumbo v47, "CDDownloadThread : use AndroidHttpClient : "

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "CDDownloadThread : run : Actual URL: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    new-instance v46, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "CDDownloadThread : run :Final URL "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "SAMSUNG-"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v46, v0

    const-string/jumbo v47, "User-Agent"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v37

    if-eqz v36, :cond_2

    const/16 v46, -0x1

    move/from16 v0, v46

    move/from16 v1, v37

    if-eq v0, v1, :cond_2

    const/16 v31, 0x1

    :cond_2
    :try_start_1
    new-instance v30, Ljava/net/URI;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v43, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v30 .. v30}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v30 .. v30}, Ljava/net/URI;->getPort()I

    move-result v47

    const-string/jumbo v48, "http"

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move/from16 v2, v47

    move-object/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v46, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v46, :cond_6

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v47, v0

    if-eqz v47, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_3
    return-object v46

    :catch_0
    move-exception v16

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "CDDownloadThread : run : URISyntaxException  Uri :  "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v19, 0x190

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v46, v0

    if-eqz v46, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v46, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_4
    if-eqz v41, :cond_5

    :try_start_4
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    const-string/jumbo v47, "CDDownloadThread : run : Exiting DownloadThread"

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    int-to-long v0, v8

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    const-wide/16 v46, 0x0

    move-wide/from16 v0, v46

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->startmarker:J

    const-wide/16 v46, 0x0

    move-wide/from16 v0, v46

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->endmarker:J

    return-object v18

    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v35

    const-string/jumbo v46, "http.socket.timeout"

    const/16 v47, 0x2710

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    const-string/jumbo v46, "http.connection.timeout"

    const/16 v47, 0x2710

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "CDDownloadThread :Set  Proxy Host:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, "  ProxyPort :"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    new-instance v46, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v46

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    if-eqz v31, :cond_9

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v47, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v39

    :goto_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    const-string/jumbo v47, "http response"

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v46, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v46, :cond_d

    const/16 v19, 0x190

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v47, v0

    if-eqz v47, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_8
    return-object v46

    :cond_9
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v39

    goto :goto_2

    :catch_1
    move-exception v16

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "CDDownloadThread : run : IOException trying to execute request for "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    const/16 v19, 0x190

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v16

    :goto_3
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "CDDownloadThread : run : Exception for "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v46, v0

    if-eqz v46, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v46, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_a
    if-eqz v41, :cond_5

    :try_start_b
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :catch_4
    move-exception v17

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "CDDownloadThread : run : Illegal Arg exception trying to execute request for "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    const/16 v19, 0x190

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v46

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v47, v0

    if-eqz v47, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_b
    if-eqz v41, :cond_c

    :try_start_d
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    :cond_c
    :goto_5
    throw v46

    :cond_d
    :try_start_e
    invoke-interface/range {v39 .. v39}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "CDDownloadThread : run : received response for "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-interface/range {v39 .. v39}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v14

    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    const-string/jumbo v47, "get content"

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v7, 0x0

    move-object/from16 v42, v41

    :goto_6
    :try_start_11
    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-get0()Z

    move-result v46

    if-nez v46, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v46, v0

    if-eqz v46, :cond_14

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_f
    const/16 v46, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_10
    const/16 v46, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v14, :cond_11

    :try_start_12
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_11
    :goto_7
    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v47, v0

    if-eqz v47, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_12
    if-eqz v42, :cond_13

    :try_start_13
    invoke-virtual/range {v42 .. v42}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    :cond_13
    :goto_8
    return-object v46

    :catch_5
    move-exception v15

    const/16 v19, 0x1ef

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_0

    :catch_6
    move-exception v13

    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    const-string/jumbo v47, "entityStream.close error"

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_7

    :catch_7
    move-exception v16

    move-object/from16 v41, v42

    goto/16 :goto_3

    :catch_8
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    const/16 v49, 0x1

    invoke-static/range {v47 .. v49}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto :goto_8

    :cond_14
    if-eqz v14, :cond_15

    :try_start_16
    invoke-virtual {v14, v12}, Ljava/io/InputStream;->read([B)I

    move-result v7

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    const-string/jumbo v47, "CDDownloadThread : run : Data processing"

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    const/16 v46, -0x1

    move/from16 v0, v46

    if-ne v7, v0, :cond_17

    const/16 v19, 0x1ef

    :goto_9
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    const-string/jumbo v47, "CDDownloadThread : run : CD_STATUS_DOWNLOAD_COMPLETED"

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v14, :cond_16

    :try_start_18
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :cond_16
    :goto_a
    move-object/from16 v41, v42

    goto/16 :goto_0

    :catch_9
    move-exception v15

    const/16 v19, 0x1ef

    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_9

    :catchall_1
    move-exception v46

    move-object/from16 v41, v42

    goto/16 :goto_4

    :cond_17
    invoke-static {}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-get0()Z

    move-result v46

    if-nez v46, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v46, v0

    if-eqz v46, :cond_1d

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_19
    const/16 v46, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_1a
    const/16 v46, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_1b
    if-eqz v42, :cond_1c

    :try_start_1a
    invoke-virtual/range {v42 .. v42}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a

    :cond_1c
    :goto_b
    return-object v46

    :catch_a
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    const/16 v49, 0x1

    invoke-static/range {v47 .. v49}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_1d
    if-nez v42, :cond_1e

    :try_start_1b
    new-instance v41, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileName:Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :goto_c
    const/16 v46, 0x0

    :try_start_1c
    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v12, v1, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :goto_d
    add-int/2addr v8, v7

    move-object/from16 v42, v41

    goto/16 :goto_6

    :catch_b
    move-exception v16

    move-object/from16 v41, v42

    :goto_e
    const/16 v19, 0x1ec

    goto :goto_d

    :catch_c
    move-exception v13

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    const-string/jumbo v47, "entityStream.close error"

    invoke-static/range {v46 .. v47}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto/16 :goto_a

    :catch_d
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v46, v0

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x1

    invoke-static/range {v46 .. v48}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :catch_e
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    const/16 v49, 0x1

    invoke-static/range {v47 .. v49}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :catch_f
    move-exception v16

    goto :goto_e

    :cond_1e
    move-object/from16 v41, v42

    goto :goto_c
.end method

.method private isLatestVersion(Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;)Z
    .locals 12

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, p1, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->version:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->version:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "V"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "."

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "V"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "."

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "."

    const-string/jumbo v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "."

    const-string/jumbo v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "localVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ; downloadVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "localUpdate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ; downloadUpdate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    :goto_2
    return v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v10, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v7, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionVersion_CEK.bin"

    const/4 v3, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_0
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_1
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-boolean v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    invoke-static {v10}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;)V

    :cond_2
    const-string/jumbo v10, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v10, v7}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-boolean v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdating:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    return-void

    :cond_4
    :try_start_2
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "/system/etc/HomeLocationVersion.bin"

    invoke-virtual {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :try_start_3
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-boolean v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v10, :cond_7

    const/4 v5, 0x2

    :goto_1
    iget-wide v10, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_b

    if-ge v0, v5, :cond_b

    const-string/jumbo v10, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v10, v7}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-boolean v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    :cond_6
    return-void

    :cond_7
    const/4 v5, 0x4

    goto :goto_1

    :cond_8
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fileInfo.fileSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-wide v10, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fail to download, fileInfo.fileSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    const-string/jumbo v10, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v10, v7}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;

    move-result-object v2

    if-nez v2, :cond_f

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-boolean v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    :cond_9
    return-void

    :cond_a
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Ready download, fileInfo.fileSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_b
    const/4 v4, 0x1

    iget-wide v10, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_c

    const/4 v4, 0x0

    :cond_c
    if-eqz v4, :cond_1f

    iget-object v3, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fileInfo1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v3, :cond_1c

    :try_start_4
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    invoke-virtual {v10, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v9

    :goto_2
    :try_start_5
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "versionInfo1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mVersionInfo = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    if-eqz v9, :cond_15

    iget-object v10, v9, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->version:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isMessyCode(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "the version is messy code"

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v10, :cond_d

    const-string/jumbo v10, "feature_multisim_dsda_cdma_gsm"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_d
    :goto_3
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Delete mVersionTmpFile = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_e
    return-void

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "EVENT_HTTP_EXCEPTION1 = 2"

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_10
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_11
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "download failed"

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-boolean v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v10, :cond_2c

    sget v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    :cond_12
    :goto_4
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-boolean v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v10, :cond_13

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    :cond_13
    return-void

    :cond_14
    :try_start_6
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_15
    if-eqz v9, :cond_16

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    if-eqz v10, :cond_16

    iget-object v10, v9, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->version:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    iget-object v11, v11, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, v9, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    iget-object v11, v11, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_17

    :cond_16
    if-eqz v9, :cond_1c

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    invoke-direct {p0, v10, v9}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->isLatestVersion(Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;)Z

    move-result v10

    if-eqz v10, :cond_1c

    :cond_17
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "EVENT_VERSION_SAME = 4"

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "download repeate"

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-boolean v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    invoke-static {v10}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap4(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;)V

    :goto_5
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Delete mVersionTmpFile = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_18
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-boolean v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v10, :cond_19

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    :cond_19
    return-void

    :cond_1a
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1b
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "mHandler.sendEmptyMessage(EVENT_VERSION_SAME)"

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    goto :goto_5

    :cond_1c
    iget-boolean v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mbDownloadByZip:Z

    if-eqz v10, :cond_25

    const-string/jumbo v10, "/data/data/com.android.phone/HomeLocationDB_tmp.bin"

    const-string/jumbo v11, "/data/data/com.android.phone/HomeLocationDB_tmp.zip"

    const-string/jumbo v12, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionDB_CEK.zip"

    invoke-direct {p0, v10, v11, v12}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->downLoadZipFileAndUnZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;

    move-result-object v2

    if-nez v2, :cond_1d

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "downLoadZipFileAndUnZip failed, change to download by normal mode"

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mbDownloadByZip:Z

    const-string/jumbo v10, "/data/data/com.android.phone/HomeLocationDB_tmp.bin"

    const-string/jumbo v11, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionDB_CEK.bin"

    invoke-direct {p0, v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;

    move-result-object v2

    :cond_1d
    :goto_6
    if-eqz v2, :cond_1e

    iget-object v3, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    :cond_1e
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fileInfo2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_1f
    if-eqz v9, :cond_21

    if-eqz v2, :cond_21

    iget-wide v10, v9, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->dbSize:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_20

    iget-wide v10, v9, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->dbSize:J

    iget-wide v12, v2, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_21

    :cond_20
    const/4 v4, 0x0

    :cond_21
    if-eqz v2, :cond_22

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    invoke-virtual {v10, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->readDownloadFileInfo(Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;)V

    invoke-virtual {v2}, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->isValidFile()Z

    move-result v10

    if-eqz v10, :cond_26

    const/4 v4, 0x1

    :cond_22
    :goto_7
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCorrectFile = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    if-eqz v4, :cond_28

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    const-string/jumbo v11, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    const-string/jumbo v11, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_23
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v10, :cond_24

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_24
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fileInfo2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-boolean v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v10, :cond_27

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v10, "com.sec.action.UPDATE_VERSION"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "download success"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    invoke-static {v10}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap4(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;)V

    goto/16 :goto_4

    :cond_25
    const-string/jumbo v10, "/data/data/com.android.phone/HomeLocationDB_tmp.bin"

    const-string/jumbo v11, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionDB_CEK.bin"

    invoke-direct {p0, v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;

    move-result-object v2

    goto/16 :goto_6

    :cond_26
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_27
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    :cond_28
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "EVENT_HTTP_EXCEPTION = 2"

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v10, :cond_29

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_29
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v10, :cond_2a

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v11, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_2a
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    const-string/jumbo v11, "download failed"

    invoke-static {v10, v11}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-boolean v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z

    if-eqz v10, :cond_2b

    sget v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    goto/16 :goto_4

    :cond_2b
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v10, :cond_12

    iget-boolean v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    :cond_2c
    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v10, :cond_12

    iget-boolean v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;

    iget-object v10, v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4
.end method

.method public startThread()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->start()V

    return-void
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_0
    return-void
.end method
