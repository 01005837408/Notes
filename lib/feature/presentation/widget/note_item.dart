import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_app/core/helper/check_text_arabic.dart';
import 'package:hive_app/feature/data/maneger/display_note/note_cubit.dart';
import 'package:hive_app/feature/data/model/note_model.dart';
import 'package:hive_app/feature/presentation/view/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    final bool isRtl = isArabic(note.title);
    final textAlign = isRtl ? TextAlign.right : TextAlign.left;
    final containerPadding = EdgeInsets.only(
      left: 20.w,
      right: isRtl ? 20.w : 0.w,
      top: 12.h,
      bottom: 20.h,
    );

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => EditNoteView(note: note),
          ),
        );
      },
      child: Directionality(
        textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
        child: Container(
          padding: containerPadding,
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment:
                isRtl ? CrossAxisAlignment.end : CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  note.title,
                  textAlign: textAlign,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 28.sp,
                    
                    color: Colors.black,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    note.description,
                    textAlign: textAlign,
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    BlocProvider.of<NoteCubit>(context).deleteItem(note);
                  },
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24.sp,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  note.date,
                 textAlign: textAlign,
                  style:
                  
                   TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
