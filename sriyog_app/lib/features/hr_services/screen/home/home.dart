import 'package:flutter/material.dart';
import 'package:sriyog_app/common/widgets/texts/section_heading.dart';
import 'package:sriyog_app/features/hr_services/screen/home/widgets/construction.dart';
import 'package:sriyog_app/utils/constants/sizes.dart';
import '../../../../common/widgets/texts/primary_section_heading.dart';
import 'widgets/education.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_banner.dart';
import 'widgets/information_tech.dart';
import 'widgets/repair_maintenance.dart';
import 'widgets/top_profession.dart';
import 'widgets/top_professional.dart';

class SpHomeScreen extends StatelessWidget {
  const SpHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SpHomeAppBar(),
      body: Padding(
        padding: EdgeInsets.all(SpSizes.sm),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Home banner
              SpHomeBanner(),
              SizedBox(height: SpSizes.spaceBtwSections),

              /// Primary Section heading
              SpPrimarySectionHeading(
                title: "Skilled Professionals",
              ),
              SizedBox(height: SpSizes.spaceBtwItems / 1.2),

              /// Top Profession Section
              SpTopProfession(),

              SizedBox(height: SpSizes.spaceBtwItems),

              /// Top Professional Section
              SpTopProfessional(),
              SizedBox(height: SpSizes.spaceBtwSections),

              /// Human Resources Categories Sectoion
              SpPrimarySectionHeading(
                title: 'Category',
                showVerifiedIcon: true,
              ),
              SizedBox(height: SpSizes.spaceBtwItems / 1.2),

              /// Repair and maintenance section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SpSizes.sm),
                child: SpSectionHeading(title: 'Repair And Maintenance'),
              ),
              SpRepairMaintenanceCategory(),
              SizedBox(height: SpSizes.spaceBtwItems / 1.2),

              /// Education Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SpSizes.sm),
                child: SpSectionHeading(title: 'Educations'),
              ),
              SpEducationCategory(),

              /// Construction Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SpSizes.sm),
                child: SpSectionHeading(title: 'Constructions'),
              ),
              SpConstructionCategory(),

              /// IT and Communication Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SpSizes.sm),
                child: SpSectionHeading(title: 'IT & Software'),
              ),
              SpITCategory(),
            ],
          ),
        ),
      ),
    );
  }
}
